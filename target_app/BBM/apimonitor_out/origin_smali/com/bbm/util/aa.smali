.class final Lcom/bbm/util/aa;
.super Ljava/lang/Object;
.source "ChannelJoinUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bbm/util/y;


# direct methods
.method constructor <init>(Lcom/bbm/util/y;I)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/aa;->b:Lcom/bbm/util/y;

    iput p2, p0, Lcom/bbm/util/aa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/util/aa;->b:Lcom/bbm/util/y;

    iget-object v0, v0, Lcom/bbm/util/y;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbm/util/aa;->b:Lcom/bbm/util/y;

    iget-object v1, v1, Lcom/bbm/util/y;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/bbm/util/aa;->a:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
