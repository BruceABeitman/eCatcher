.class public final Lcom/d/a/b/c/c;
.super Ljava/lang/Object;
.source "SimpleBitmapDisplayer.java"

# interfaces
.implements Lcom/d/a/b/c/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p1
.end method
