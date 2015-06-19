.class final Lcom/bbm/ui/activities/eb;
.super Lcom/bbm/j/u;
.source "ChannelReportsActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelReportsActivity;

.field private final b:Lcom/bbm/ui/c/fm;

.field private final c:Lcom/bbm/ui/activities/ea;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/ui/c/fm;Lcom/bbm/ui/activities/ea;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/eb;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    iput-object p2, p0, Lcom/bbm/ui/activities/eb;->b:Lcom/bbm/ui/c/fm;

    iput-object p3, p0, Lcom/bbm/ui/activities/eb;->c:Lcom/bbm/ui/activities/ea;

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbm/ui/activities/eb;->c:Lcom/bbm/ui/activities/ea;

    iget-object v1, v1, Lcom/bbm/ui/activities/ea;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/bbm/ui/activities/eb;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ChannelReportsActivity;->b:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/activities/eb;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/eb;->c:Lcom/bbm/ui/activities/ea;

    iget-object v3, v3, Lcom/bbm/ui/activities/ea;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->v(Ljava/lang/String;)Lcom/bbm/d/fw;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v1, v2, Lcom/bbm/d/fw;->t:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v1, v3, :cond_2a

    :cond_29
    :goto_29
    return v0

    :cond_2a
    iget-object v1, v2, Lcom/bbm/d/fw;->s:Ljava/lang/String;

    iget-object v0, v2, Lcom/bbm/d/fw;->d:Ljava/lang/String;

    :goto_2e
    iget-object v2, p0, Lcom/bbm/ui/activities/eb;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v3, p0, Lcom/bbm/ui/activities/eb;->b:Lcom/bbm/ui/c/fm;

    iget-object v4, p0, Lcom/bbm/ui/activities/eb;->c:Lcom/bbm/ui/activities/ea;

    invoke-static {v2, v3, v4, v1, v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->a(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/ui/c/fm;Lcom/bbm/ui/activities/ea;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_29

    :cond_39
    iget-object v1, p0, Lcom/bbm/ui/activities/eb;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ChannelReportsActivity;->b:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/activities/eb;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/eb;->c:Lcom/bbm/ui/activities/ea;

    iget-object v3, v3, Lcom/bbm/ui/activities/ea;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/activities/eb;->c:Lcom/bbm/ui/activities/ea;

    iget-object v4, v4, Lcom/bbm/ui/activities/ea;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/bbm/util/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->O(Ljava/lang/String;)Lcom/bbm/d/eo;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v1, v2, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v3, :cond_29

    iget-object v1, v2, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    iget-object v0, v2, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    goto :goto_2e
.end method
