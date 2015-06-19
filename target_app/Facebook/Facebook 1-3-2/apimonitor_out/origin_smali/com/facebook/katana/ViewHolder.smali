.class public Lcom/facebook/katana/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mImageView:Landroid/widget/ImageView;

.field private mItemId:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getItemId()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/ViewHolder;->mItemId:Ljava/lang/Object;

    return-object v0
.end method

.method public setItemId(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/katana/ViewHolder;->mItemId:Ljava/lang/Object;

    return-void
.end method
