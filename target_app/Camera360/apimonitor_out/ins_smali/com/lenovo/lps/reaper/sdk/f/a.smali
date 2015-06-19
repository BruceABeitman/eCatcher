.class public final Lcom/lenovo/lps/reaper/sdk/f/a;
.super Ljava/lang/Object;
.field private a:Lcom/lenovo/lps/reaper/sdk/f/b;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a([Lcom/lenovo/lps/reaper/sdk/api/a;)I
.registers 4
if-eqz p1, :cond_5
array-length v0, p1
if-nez v0, :cond_7
:cond_5
const/4 v0, 0x0
:goto_6
return v0
:cond_7
const-string/jumbo v0, "ReportManager"
const-string/jumbo v1, "start postEvents"
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/a;->a:Lcom/lenovo/lps/reaper/sdk/f/b;
invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/f/b;->a([Lcom/lenovo/lps/reaper/sdk/api/a;)I
move-result v0
goto :goto_6
.end method
.method public final a(Lcom/lenovo/lps/reaper/sdk/f/b;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/f/a;->a:Lcom/lenovo/lps/reaper/sdk/f/b;
return-void
.end method