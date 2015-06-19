.class final Lcom/cropimage/j;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/cropimage/m;

.field final synthetic b:Z

.field final synthetic c:Lcom/cropimage/i;


# direct methods
.method constructor <init>(Lcom/cropimage/i;Lcom/cropimage/m;Z)V
    .registers 4

    iput-object p1, p0, Lcom/cropimage/j;->c:Lcom/cropimage/i;

    iput-object p2, p0, Lcom/cropimage/j;->a:Lcom/cropimage/m;

    iput-boolean p3, p0, Lcom/cropimage/j;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/cropimage/j;->c:Lcom/cropimage/i;

    iget-object v1, p0, Lcom/cropimage/j;->a:Lcom/cropimage/m;

    iget-boolean v2, p0, Lcom/cropimage/j;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/cropimage/i;->setImageRotateBitmapResetBase(Lcom/cropimage/m;Z)V

    return-void
.end method
