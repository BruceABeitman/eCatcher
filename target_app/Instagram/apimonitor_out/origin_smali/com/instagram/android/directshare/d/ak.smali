.class final Lcom/instagram/android/directshare/d/ak;
.super Ljava/lang/Object;
.source "DirectSharePermalinkRecipientsRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/am;

.field final synthetic b:Lcom/instagram/model/b/a;

.field final synthetic c:Lcom/instagram/android/directshare/d/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/am;Lcom/instagram/model/b/a;Lcom/instagram/android/directshare/d/an;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/directshare/d/ak;->a:Lcom/instagram/android/directshare/d/am;

    iput-object p2, p0, Lcom/instagram/android/directshare/d/ak;->b:Lcom/instagram/model/b/a;

    iput-object p3, p0, Lcom/instagram/android/directshare/d/ak;->c:Lcom/instagram/android/directshare/d/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/directshare/d/ak;->a:Lcom/instagram/android/directshare/d/am;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/ak;->b:Lcom/instagram/model/b/a;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/ak;->c:Lcom/instagram/android/directshare/d/an;

    invoke-static {v2}, Lcom/instagram/android/directshare/d/an;->a(Lcom/instagram/android/directshare/d/an;)Lcom/instagram/android/directshare/widget/RecipientView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/android/directshare/d/am;->a(Lcom/instagram/model/b/a;Landroid/view/View;)V

    return-void
.end method
