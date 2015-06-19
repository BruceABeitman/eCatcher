.class final Lcom/bbm/ui/activities/do;
.super Lcom/bbm/j/a;
.source "ChannelReportsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Lcom/bbm/d/ec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelReportsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelReportsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/do;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/do;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ChannelReportsActivity;->b:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/do;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v0

    return-object v0
.end method
