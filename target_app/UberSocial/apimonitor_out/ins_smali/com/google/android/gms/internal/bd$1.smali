.class synthetic Lcom/google/android/gms/internal/bd$1;
.super Ljava/lang/Object;
.field static final synthetic a:[I
.field static final synthetic b:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/google/ads/AdRequest$ErrorCode;->values()[Lcom/google/ads/AdRequest$ErrorCode;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/google/android/gms/internal/bd$1;->b:[I
:try_start_9
sget-object v0, Lcom/google/android/gms/internal/bd$1;->b:[I
sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
invoke-virtual {v1}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c
sget-object v0, Lcom/google/android/gms/internal/bd$1;->b:[I
sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;
invoke-virtual {v1}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a
:try_start_1f
:goto_1f
sget-object v0, Lcom/google/android/gms/internal/bd$1;->b:[I
sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
invoke-virtual {v1}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_68
sget-object v0, Lcom/google/android/gms/internal/bd$1;->b:[I
sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;
invoke-virtual {v1}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_66
invoke-static {}, Lcom/google/ads/AdRequest$Gender;->values()[Lcom/google/ads/AdRequest$Gender;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/google/android/gms/internal/bd$1;->a:[I
:try_start_3e
sget-object v0, Lcom/google/android/gms/internal/bd$1;->a:[I
sget-object v1, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;
invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_49
.catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_64
:try_start_49
:goto_49
sget-object v0, Lcom/google/android/gms/internal/bd$1;->a:[I
sget-object v1, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;
invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_54
:try_start_54
:try_end_54
.catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62
sget-object v0, Lcom/google/android/gms/internal/bd$1;->a:[I
sget-object v1, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;
invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_end_5f
.catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_60
:goto_5f
return-void
:catch_60
move-exception v0
goto :goto_5f
:catch_62
move-exception v0
goto :goto_54
:catch_64
move-exception v0
goto :goto_49
:catch_66
move-exception v0
goto :goto_35
:catch_68
move-exception v0
goto :goto_2a
:catch_6a
move-exception v0
goto :goto_1f
:catch_6c
move-exception v0
goto :goto_14
.end method