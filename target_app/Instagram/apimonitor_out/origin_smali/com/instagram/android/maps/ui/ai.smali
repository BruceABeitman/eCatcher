.class final Lcom/instagram/android/maps/ui/ai;
.super Ljava/lang/Object;
.source "PhotoOverlay.java"

# interfaces
.implements Lcom/instagram/common/ui/widget/imageview/f;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/ui/ah;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/ui/ai;->a:Lcom/instagram/android/maps/ui/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/maps/ui/ai;->a:Lcom/instagram/android/maps/ui/ah;

    invoke-static {v0, p1}, Lcom/instagram/android/maps/ui/ah;->a(Lcom/instagram/android/maps/ui/ah;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/instagram/android/maps/ui/ai;->a:Lcom/instagram/android/maps/ui/ah;

    invoke-static {v0}, Lcom/instagram/android/maps/ui/ah;->a(Lcom/instagram/android/maps/ui/ah;)Lcom/instagram/android/maps/ui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->invalidate()V

    return-void
.end method
