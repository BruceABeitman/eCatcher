.class final Lcom/instagram/android/fragment/fp;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fk;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fk;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/fp;->a:Lcom/instagram/android/fragment/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/fragment/fp;->a:Lcom/instagram/android/fragment/fk;

    const-string v1, "/legal/privacy/"

    sget v2, Lcom/facebook/az;->privacy_policy:I

    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/fk;->a(Lcom/instagram/android/fragment/fk;Ljava/lang/String;I)V

    return-void
.end method
