.class final Lcom/bbm/ui/bx;
.super Ljava/lang/Object;
.source "EmoticonStickerPager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/EmoticonStickerPager;


# direct methods
.method constructor <init>(Lcom/bbm/ui/EmoticonStickerPager;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/bx;->a:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/bx;->a:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->b(Lcom/bbm/ui/EmoticonStickerPager;)V

    return-void
.end method
