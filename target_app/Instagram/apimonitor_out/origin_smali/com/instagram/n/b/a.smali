.class public Lcom/instagram/n/b/a;
.super Ljava/lang/Object;
.source "AutoUpdateHelper.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private d:Lcom/instagram/common/a/a/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/n/b/a;

    sput-object v0, Lcom/instagram/n/b/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/instagram/common/a/a/q;

    invoke-direct {v0}, Lcom/instagram/common/a/a/q;-><init>()V

    iput-object v0, p0, Lcom/instagram/n/b/a;->d:Lcom/instagram/common/a/a/m;

    iput-object p1, p0, Lcom/instagram/n/b/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/instagram/n/b/a;->b:Landroid/content/Context;

    const-string v1, "autoUpdatePreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/n/b/a;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/instagram/n/b/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/instagram/n/b/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    new-instance v0, Lcom/instagram/n/b/b;

    invoke-direct {v0, p0, p1}, Lcom/instagram/n/b/b;-><init>(Lcom/instagram/n/b/a;I)V

    sget-object v1, Lcom/instagram/n/b/a;->a:Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/instagram/n/b/a;->a(J)V

    new-instance v1, Lcom/instagram/n/b/h;

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/n/b/h;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/n/b/a;->d:Lcom/instagram/common/a/a/m;

    invoke-virtual {v1, v0}, Lcom/instagram/n/b/h;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V

    return-void
.end method

.method private a(J)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/n/b/a;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/instagram/n/b/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/n/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v1, Lcom/instagram/ui/dialog/b;

    iget-object v2, p0, Lcom/instagram/n/b/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/az;->autoupdater_upgrade_available:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->autoupdater_new_version:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->autoupdater_install:I

    new-instance v3, Lcom/instagram/n/b/c;

    invoke-direct {v3, p0, v0}, Lcom/instagram/n/b/c;-><init>(Lcom/instagram/n/b/a;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static a()Z
    .registers 2

    invoke-static {}, Lcom/instagram/common/o/a;->c()Z

    move-result v0

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic b(Lcom/instagram/n/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/n/b/a;->g()V

    return-void
.end method

.method static synthetic d()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/instagram/n/b/a;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private e()Z
    .registers 10

    const/4 v0, 0x0

    invoke-static {}, Lcom/instagram/n/b/a;->a()Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, Lcom/instagram/n/b/a;->f()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v1

    const-wide/32 v7, 0x1499700

    cmp-long v5, v5, v7

    if-lez v5, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    sget-object v5, Lcom/instagram/n/b/a;->a:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Check? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Last check: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method private f()J
    .registers 5

    iget-object v0, p0, Lcom/instagram/n/b/a;->c:Landroid/content/SharedPreferences;

    const-string v1, "last_request_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private g()V
    .registers 4

    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/n/b/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->autoupdater_no_upgrade_available:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->autoupdater_up_to_date:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/n/b/d;

    invoke-direct {v2, p0}, Lcom/instagram/n/b/d;-><init>(Lcom/instagram/n/b/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/n/b/a;->e()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    sget v0, Lcom/instagram/n/b/e;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/n/b/a;->a(I)V

    goto :goto_6
.end method

.method public final c()V
    .registers 2

    sget v0, Lcom/instagram/n/b/e;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/n/b/a;->a(I)V

    return-void
.end method
