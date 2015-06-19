.class final Lcom/lenovo/lps/reaper/sdk/a/d;
.super Ljava/lang/Object;
.implements Lcom/lenovo/lps/reaper/sdk/a/i;
.field private static a:Ljava/lang/String;
.field private static b:I
.field private static c:I
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "CompressConfig"
sput-object v0, Lcom/lenovo/lps/reaper/sdk/a/d;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/a/d;->a()V
return-void
.end method
.method public static a(I)Z
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/s;->b()I
move-result v2
packed-switch v2, :pswitch_data_24
move v0, v1
:cond_a
:goto_a
return v0
:pswitch_b
sget v2, Lcom/lenovo/lps/reaper/sdk/a/d;->b:I
if-lez v2, :cond_15
sget v2, Lcom/lenovo/lps/reaper/sdk/a/d;->b:I
if-ge p0, v2, :cond_a
move v0, v1
goto :goto_a
:cond_15
move v0, v1
goto :goto_a
:pswitch_17
sget v2, Lcom/lenovo/lps/reaper/sdk/a/d;->c:I
if-lez v2, :cond_21
sget v2, Lcom/lenovo/lps/reaper/sdk/a/d;->c:I
if-ge p0, v2, :cond_a
move v0, v1
goto :goto_a
:cond_21
move v0, v1
goto :goto_a
nop
:pswitch_data_24
.packed-switch 0x3
:pswitch_17
:pswitch_b
.end packed-switch
.end method
.method public final a()V
.registers 2
const/4 v0, 0x3
sput v0, Lcom/lenovo/lps/reaper/sdk/a/d;->b:I
sput v0, Lcom/lenovo/lps/reaper/sdk/a/d;->c:I
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
:try_start_0
invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
const-string/jumbo v1, "Compress2G"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2d
sput v0, Lcom/lenovo/lps/reaper/sdk/a/d;->b:I
:goto_f
sget-object v1, Lcom/lenovo/lps/reaper/sdk/a/d;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ":"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_2c
return-void
:cond_2d
sput v0, Lcom/lenovo/lps/reaper/sdk/a/d;->c:I
:try_end_2f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30
goto :goto_f
:catch_30
move-exception v0
sget-object v1, Lcom/lenovo/lps/reaper/sdk/a/d;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Wrong Value: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2c
.end method
.method public final a(Ljava/lang/String;)Z
.registers 3
const-string/jumbo v0, "Compress2G"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
const-string/jumbo v0, "Compress3G4G"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
:cond_12
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method