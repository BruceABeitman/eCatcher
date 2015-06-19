.class final Lcom/bbm/ui/activities/dx;
.super Ljava/lang/Object;
.source "ChannelReportsActivity.java"

# interfaces
.implements Lcom/bbm/ui/c/fq;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ea;

.field final synthetic b:Lcom/bbm/ui/activities/ChannelReportsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/ui/activities/ea;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/dx;->b:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/dx;->a:Lcom/bbm/ui/activities/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/activities/dx;->b:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget v1, p1, Lcom/bbm/ui/slidingmenu/a;->a:I

    iget-object v2, p0, Lcom/bbm/ui/activities/dx;->a:Lcom/bbm/ui/activities/ea;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/ChannelReportsActivity;->a(ILcom/bbm/ui/activities/ea;)V

    return-void
.end method
