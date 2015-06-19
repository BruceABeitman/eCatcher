.class public final Lcom/mato/sdk/a/b$e;
.super Ljava/lang/Object;
.field private static a:Z
.field private static b:I
.field private static c:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/mato/sdk/a/b$e;->a:Z
const/4 v0, -0x1
sput v0, Lcom/mato/sdk/a/b$e;->b:I
const/4 v0, 0x1
sput-boolean v0, Lcom/mato/sdk/a/b$e;->c:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(I)V
.registers 1
sput p0, Lcom/mato/sdk/a/b$e;->b:I
return-void
.end method
.method public static a(Z)V
.registers 3
sput-boolean p0, Lcom/mato/sdk/a/b$e;->a:Z
:try_start_2
invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "last_proxy"
invoke-static {v1, v0}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
:goto_10
:try_end_10
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
goto :goto_10
.end method
.method public static a()Z
.registers 3
const-string/jumbo v0, "Mato.MatoConfig"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "the firstTime is:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-boolean v2, Lcom/mato/sdk/a/b$e;->c:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
sget-boolean v0, Lcom/mato/sdk/a/b$e;->c:Z
if-nez v0, :cond_1f
sget-boolean v0, Lcom/mato/sdk/a/b$e;->a:Z
:goto_1e
return v0
:cond_1f
const/4 v0, 0x0
sput-boolean v0, Lcom/mato/sdk/a/b$e;->c:Z
const-string/jumbo v0, "last_proxy"
const-string/jumbo v1, ""
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_54
:try_start_32
invoke-static {v0}, Lcom/mato/sdk/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
sput-boolean v0, Lcom/mato/sdk/a/b$e;->a:Z
const-string/jumbo v0, "Mato.MatoConfig"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "the viaProxy is:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-boolean v2, Lcom/mato/sdk/a/b$e;->a:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_54
:try_end_54
.catch Ljava/lang/Exception; {:try_start_32 .. :try_end_54} :catch_57
:cond_54
sget-boolean v0, Lcom/mato/sdk/a/b$e;->a:Z
goto :goto_1e
:catch_57
move-exception v0
goto :goto_54
.end method
.method public static b()I
.registers 1
sget v0, Lcom/mato/sdk/a/b$e;->b:I
return v0
.end method
.method public static b(Z)V
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mato/sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "last_report"
invoke-static {v1, v0}, Lcom/mato/sdk/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Z
:try_end_e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
goto :goto_e
.end method
.method public static c()Z
.registers 2
sget v0, Lcom/mato/sdk/a/b$e;->b:I
const/4 v1, -0x1
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method private static d()Z
.registers 4
const-string/jumbo v0, "last_report"
const-string/jumbo v1, ""
invoke-static {v0, v1}, Lcom/mato/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_30
:try_start_10
invoke-static {v0}, Lcom/mato/sdk/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
const-string/jumbo v1, "Mato.MatoConfig"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "lastReportSucceed="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_2e
:try_end_2e
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2e} :catch_2f
return v0
:catch_2f
move-exception v0
:cond_30
const/4 v0, 0x0
goto :goto_2e
.end method