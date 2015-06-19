.class final Lcom/bbm/ui/activities/abn;
.super Ljava/lang/Object;
.source "PreviewChannelActivity.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/PreviewChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/PreviewChannelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/abn;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/abn;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/abn;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->d(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/d;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/activities/abn;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/PreviewChannelActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->a(Lcom/bbm/ui/activities/PreviewChannelActivity;Lcom/bbm/d/ec;)Lcom/bbm/d/ec;

    iget-object v0, p0, Lcom/bbm/ui/activities/abn;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->e(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_25

    const/4 v0, 0x0

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x1

    goto :goto_24
.end method
