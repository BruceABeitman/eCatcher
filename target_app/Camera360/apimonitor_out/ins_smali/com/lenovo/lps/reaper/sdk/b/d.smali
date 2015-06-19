.class public Lcom/lenovo/lps/reaper/sdk/b/d;
.super Ljava/lang/Object;
.field private a:J
.field private b:J
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(JJ)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->a:J
iput-wide p3, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->b:J
return-void
.end method
.method public static a(Landroid/content/Context;I)Ljava/lang/String;
.registers 9
invoke-static {p0}, Lcom/lenovo/lps/reaper/sdk/e/a;->a(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/e/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/e/a;->a(I)Ljava/lang/String;
move-result-object v2
const-string/jumbo v0, "phone"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
if-eqz v2, :cond_19
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_42
:cond_19
:try_start_19
const-string/jumbo v1, "getDeviceIdGemini"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v5, v3, v4
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v0, v1, v3, v4}, Lcom/lenovo/lps/reaper/sdk/d/a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:goto_34
:try_end_34
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_34} :catch_41
if-eqz v1, :cond_3c
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_44
:cond_3c
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
move-result-object v0
:goto_40
return-object v0
:catch_41
move-exception v1
:cond_42
move-object v1, v2
goto :goto_34
:cond_44
move-object v0, v1
goto :goto_40
.end method
.method public final a()J
.registers 3
iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->a:J
return-wide v0
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->a:J
return-void
.end method
.method public final b()J
.registers 3
iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->b:J
return-wide v0
.end method
.method public final b(J)V
.registers 3
iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->b:J
return-void
.end method