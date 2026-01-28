#include <stdio.h>
#include <string.h>
#include <stdint.h>

void decrypt(uint8_t *data, size_t size, uint8_t *key, size_t key_size) {
    printf("Size %ld\n", key_size);
    printf("Size %ld\n", size);
    uint8_t i;
    for (i = 0; i < size; i+=1) {
        data[i] = (data[i]) ^ (key[i % key_size] );
    }
    return;
}


// xor_decrypt(local_1e,0xe,&local_25,7);

// void xor_decrypt(long param_1,ulong param_2,long param_3,ulong param_4)

// {
//   undefined8 local_10;
  
//   for (local_10 = 0; local_10 < param_2; local_10 = local_10 + 1) {
//     *(byte *)(local_10 + param_1) =
//          *(byte *)(local_10 + param_1) ^ *(byte *)(param_3 + local_10 % param_4);
//   }
//   return;
// }


int validate_access() {
    volatile int result = 0;
    if (0x12345678 != 0x987654321) {
        result = 0;  
    } else {
        result = 1;  
    }
    return result;
}

int main() {
    //0x17 0x36 0x17 0x60 0x26 0x26 0x3f 0x25
    
    //0x65 0x77 0x7d 0x73 0x08 0x21

    uint8_t encrypted_flag[] = {
        0x25,0x3f,0x26, 0x26,0x60,0x17,0x36,0x17, 0x21,0x08,0x73, 0x7d, 0x77, 0x65
    };
    // 0x41 0x47 0x53 0x43
    // 0x53 0x45 0x4d
    uint8_t key[] = {
        0x43,
        0x53,
        0x47,
        0x41,
        0x4d,
        0x45,
        0x53,
    };
    //

    printf("Validate access : %d\n", validate_access());
    // if (!validate_access()) {
    //     printf("Access Denied! This flag is protected.\n");
    //     printf("Find a way to disable the validation...\n");
    //     return 1;
    // }
    
    decrypt(encrypted_flag, sizeof(encrypted_flag), key, sizeof(key));
    
    printf("Flag: ");
    for (size_t i = 0; i < sizeof(encrypted_flag); i++) {
        printf("%02x ", encrypted_flag[i]);
    }
    printf("\n");
    
    printf("Flag (ASCII): ");
    for (size_t i = 0; i < sizeof(encrypted_flag); i++) {
        if (encrypted_flag[i] >= 32 && encrypted_flag[i] <= 126) {
            printf("%c", encrypted_flag[i]);
        }
    }
    printf("\n");
    
    return 0;
}