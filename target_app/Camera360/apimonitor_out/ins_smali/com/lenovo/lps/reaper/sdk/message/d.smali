.class final synthetic Lcom/lenovo/lps/reaper/sdk/message/d;
.super Ljava/lang/Object;
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/n;->values()[Lcom/lenovo/lps/reaper/sdk/b/n;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/lenovo/lps/reaper/sdk/message/d;->a:[I
:try_start_9
sget-object v0, Lcom/lenovo/lps/reaper/sdk/message/d;->a:[I
sget-object v1, Lcom/lenovo/lps/reaper/sdk/b/n;->a:Lcom/lenovo/lps/reaper/sdk/b/n;
invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/b/n;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15
return-void
:catch_15
move-exception v0
goto :goto_14
.end method