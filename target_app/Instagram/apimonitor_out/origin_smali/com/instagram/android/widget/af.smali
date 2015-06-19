.class final Lcom/instagram/android/widget/af;
.super Ljava/lang/Object;
.source "ViewSwitchWidgetHelper.java"

# interfaces
.implements Lcom/instagram/android/feed/a/i;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/instagram/android/feed/a/a;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/widget/af;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/instagram/android/widget/af;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/instagram/android/widget/af;->c:Lcom/instagram/android/feed/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/widget/af;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/android/widget/af;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/instagram/android/widget/af;->c:Lcom/instagram/android/feed/a/a;

    invoke-static {p1, v0, v1, v2}, Lcom/instagram/android/widget/ae;->a(ILandroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V

    return-void
.end method
