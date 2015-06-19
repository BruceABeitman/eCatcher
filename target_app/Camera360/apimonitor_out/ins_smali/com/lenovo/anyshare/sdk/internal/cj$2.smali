.class synthetic Lcom/lenovo/anyshare/sdk/internal/cj$2;
.super Ljava/lang/Object;
.source "WifiNetworkManager.java"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bz$a;->values()[Lcom/lenovo/anyshare/sdk/internal/bz$a;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/cj$2;->a:[I
:try_start_9
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cj$2;->a:[I
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->a:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/bz$a;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c
:goto_14
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cj$2;->a:[I
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->b:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/bz$a;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_1f
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cj$2;->a:[I
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->c:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/bz$a;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38
:goto_2a
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cj$2;->a:[I
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->d:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/bz$a;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36
return-void
:catch_36
move-exception v0
goto :goto_35
:catch_38
move-exception v0
goto :goto_2a
:catch_3a
move-exception v0
goto :goto_1f
:catch_3c
move-exception v0
goto :goto_14
.end method