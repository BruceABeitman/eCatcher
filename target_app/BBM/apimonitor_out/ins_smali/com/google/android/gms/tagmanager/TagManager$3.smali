.class synthetic Lcom/google/android/gms/tagmanager/TagManager$3;
.super Ljava/lang/Object;
.field static final synthetic XD:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/google/android/gms/tagmanager/ce$a;->values()[Lcom/google/android/gms/tagmanager/ce$a;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/google/android/gms/tagmanager/TagManager$3;->XD:[I
:try_start_9
sget-object v0, Lcom/google/android/gms/tagmanager/TagManager$3;->XD:[I
sget-object v1, Lcom/google/android/gms/tagmanager/ce$a;->VW:Lcom/google/android/gms/tagmanager/ce$a;
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/ce$a;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f
sget-object v0, Lcom/google/android/gms/tagmanager/TagManager$3;->XD:[I
sget-object v1, Lcom/google/android/gms/tagmanager/ce$a;->VX:Lcom/google/android/gms/tagmanager/ce$a;
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/ce$a;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_1f
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d
sget-object v0, Lcom/google/android/gms/tagmanager/TagManager$3;->XD:[I
sget-object v1, Lcom/google/android/gms/tagmanager/ce$a;->VY:Lcom/google/android/gms/tagmanager/ce$a;
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/ce$a;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b
:goto_2a
return-void
:catch_2b
move-exception v0
goto :goto_2a
:catch_2d
move-exception v0
goto :goto_1f
:catch_2f
move-exception v0
goto :goto_14
.end method