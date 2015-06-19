.class synthetic Lcom/google/android/gms/internal/bk$1;
.super Ljava/lang/Object;
.field static final synthetic mW:[I
.field static final synthetic mX:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/google/a/b;->values()[Lcom/google/a/b;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/google/android/gms/internal/bk$1;->mX:[I
:try_start_9
sget-object v0, Lcom/google/android/gms/internal/bk$1;->mX:[I
sget-object v1, Lcom/google/a/b;->d:Lcom/google/a/b;
invoke-virtual {v1}, Lcom/google/a/b;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c
sget-object v0, Lcom/google/android/gms/internal/bk$1;->mX:[I
sget-object v1, Lcom/google/a/b;->a:Lcom/google/a/b;
invoke-virtual {v1}, Lcom/google/a/b;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a
:try_start_1f
:goto_1f
sget-object v0, Lcom/google/android/gms/internal/bk$1;->mX:[I
sget-object v1, Lcom/google/a/b;->c:Lcom/google/a/b;
invoke-virtual {v1}, Lcom/google/a/b;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_68
sget-object v0, Lcom/google/android/gms/internal/bk$1;->mX:[I
sget-object v1, Lcom/google/a/b;->b:Lcom/google/a/b;
invoke-virtual {v1}, Lcom/google/a/b;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_66
invoke-static {}, Lcom/google/a/c;->values()[Lcom/google/a/c;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/google/android/gms/internal/bk$1;->mW:[I
:try_start_3e
sget-object v0, Lcom/google/android/gms/internal/bk$1;->mW:[I
sget-object v1, Lcom/google/a/c;->c:Lcom/google/a/c;
invoke-virtual {v1}, Lcom/google/a/c;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_49
.catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_64
:try_start_49
:goto_49
sget-object v0, Lcom/google/android/gms/internal/bk$1;->mW:[I
sget-object v1, Lcom/google/a/c;->b:Lcom/google/a/c;
invoke-virtual {v1}, Lcom/google/a/c;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_54
:try_start_54
:try_end_54
.catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62
sget-object v0, Lcom/google/android/gms/internal/bk$1;->mW:[I
sget-object v1, Lcom/google/a/c;->a:Lcom/google/a/c;
invoke-virtual {v1}, Lcom/google/a/c;->ordinal()I
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