.class final synthetic Lcom/bbm/setup/z;
.super Ljava/lang/Object;
.source "SetupErrorActivity.java"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/bbm/al;->values()[Lcom/bbm/al;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/bbm/setup/z;->a:[I
:try_start_9
sget-object v0, Lcom/bbm/setup/z;->a:[I
sget-object v1, Lcom/bbm/al;->m:Lcom/bbm/al;
invoke-virtual {v1}, Lcom/bbm/al;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_14
:try_start_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_8d
sget-object v0, Lcom/bbm/setup/z;->a:[I
sget-object v1, Lcom/bbm/al;->i:Lcom/bbm/al;
invoke-virtual {v1}, Lcom/bbm/al;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_8b
:try_start_1f
:goto_1f
sget-object v0, Lcom/bbm/setup/z;->a:[I
sget-object v1, Lcom/bbm/al;->h:Lcom/bbm/al;
invoke-virtual {v1}, Lcom/bbm/al;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_89
:try_start_2a
sget-object v0, Lcom/bbm/setup/z;->a:[I
sget-object v1, Lcom/bbm/al;->g:Lcom/bbm/al;
invoke-virtual {v1}, Lcom/bbm/al;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_start_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_87
sget-object v0, Lcom/bbm/setup/z;->a:[I
sget-object v1, Lcom/bbm/al;->f:Lcom/bbm/al;
invoke-virtual {v1}, Lcom/bbm/al;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_40
.catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_85
:goto_40
:try_start_40
sget-object v0, Lcom/bbm/setup/z;->a:[I
sget-object v1, Lcom/bbm/al;->e:Lcom/bbm/al;
invoke-virtual {v1}, Lcom/bbm/al;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:goto_4b
:try_start_4b
:try_end_4b
.catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_83
sget-object v0, Lcom/bbm/setup/z;->a:[I
sget-object v1, Lcom/bbm/al;->l:Lcom/bbm/al;
invoke-virtual {v1}, Lcom/bbm/al;->ordinal()I
move-result v1
const/4 v2, 0x7
aput v2, v0, v1
:goto_56
:try_start_56
:try_end_56
.catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_81
sget-object v0, Lcom/bbm/setup/z;->a:[I
sget-object v1, Lcom/bbm/al;->d:Lcom/bbm/al;
invoke-virtual {v1}, Lcom/bbm/al;->ordinal()I
move-result v1
const/16 v2, 0x8
aput v2, v0, v1
:try_end_62
.catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_7f
:goto_62
:try_start_62
sget-object v0, Lcom/bbm/setup/z;->a:[I
sget-object v1, Lcom/bbm/al;->b:Lcom/bbm/al;
invoke-virtual {v1}, Lcom/bbm/al;->ordinal()I
move-result v1
const/16 v2, 0x9
aput v2, v0, v1
:goto_6e
:try_start_6e
:try_end_6e
.catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_7d
sget-object v0, Lcom/bbm/setup/z;->a:[I
sget-object v1, Lcom/bbm/al;->c:Lcom/bbm/al;
invoke-virtual {v1}, Lcom/bbm/al;->ordinal()I
move-result v1
const/16 v2, 0xa
aput v2, v0, v1
:try_end_7a
.catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_7b
:goto_7a
return-void
:catch_7b
move-exception v0
goto :goto_7a
:catch_7d
move-exception v0
goto :goto_6e
:catch_7f
move-exception v0
goto :goto_62
:catch_81
move-exception v0
goto :goto_56
:catch_83
move-exception v0
goto :goto_4b
:catch_85
move-exception v0
goto :goto_40
:catch_87
move-exception v0
goto :goto_35
:catch_89
move-exception v0
goto :goto_2a
:catch_8b
move-exception v0
goto :goto_1f
:catch_8d
move-exception v0
goto :goto_14
.end method