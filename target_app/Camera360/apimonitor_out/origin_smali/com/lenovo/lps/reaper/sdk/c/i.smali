.class public final Lcom/lenovo/lps/reaper/sdk/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/g/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ReaperAssignedDeviceId"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ReadAssignedDeviceIdTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read device id from system settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/b;->u()Z

    move-result v2

    if-nez v2, :cond_66

    const-string/jumbo v2, "ReadAssignedDeviceIdTask"

    const-string/jumbo v3, "have no external storage permission."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    if-nez v1, :cond_8f

    if-nez v0, :cond_8f

    const/4 v0, 0x0

    :goto_46
    if-nez v0, :cond_65

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/s;->a()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->t()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c/n;->a()Lcom/lenovo/lps/reaper/sdk/c/n;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/c/c;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/c/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/c/n;->a(ILjava/lang/Runnable;)V

    :cond_65
    return-void

    :cond_66
    const-string/jumbo v2, "/LenovoReaper/did"

    invoke-static {v2}, Lcom/lenovo/lps/reaper/sdk/b/h;->f(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_41

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v2, "ReadAssignedDeviceIdTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read device id from sd card: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_8f
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_46
.end method
