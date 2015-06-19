.class public final Lcom/spotify/mobile/android/ui/fragments/logic/a;
.super Lcom/spotify/mobile/android/ui/fragments/logic/r;
.source "SourceFile"


# static fields
.field private static final a:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lcom/spotify/mobile/android/util/cx;

.field private e:J

.field private f:Z

.field private g:Lcom/spotify/mobile/android/util/ClientInfo;

.field private h:Landroid/os/Handler;

.field private i:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "key_rater_shown"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->a:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "key_date_first_launch"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->b:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->f:Z

    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->g:Lcom/spotify/mobile/android/util/ClientInfo;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->h:Landroid/os/Handler;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/a$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/a$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->i:Landroid/support/v4/app/z;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->e:J

    return-wide v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/logic/a;)V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->f:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->f:Z

    :cond_10
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 7

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_10

    const-string v0, "extra_queued"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->f:Z

    :cond_10
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->d:Lcom/spotify/mobile/android/util/cx;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->d:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/a;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->g:Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->e()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2d

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->d:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/a;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v3, v4}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->e:J

    iget-wide v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->e:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_54

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->e:J

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->d:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/a;->b:Lcom/spotify/mobile/android/util/cz;

    iget-wide v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;J)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V

    :cond_54
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/a;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0188

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->i:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    goto :goto_2c
.end method

.method public final c()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->d:Lcom/spotify/mobile/android/util/cx;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->d:Lcom/spotify/mobile/android/util/cx;

    :cond_e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->d:Lcom/spotify/mobile/android/util/cx;

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/a;->a:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->d:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/a;->a:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/a;->a(Landroid/content/Intent;)V

    goto :goto_19
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->d(Landroid/os/Bundle;)V

    const-string v0, "extra_queued"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
