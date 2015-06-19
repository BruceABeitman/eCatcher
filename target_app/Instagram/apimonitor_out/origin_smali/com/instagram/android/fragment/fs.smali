.class final Lcom/instagram/android/fragment/fs;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fk;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fk;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/fs;->a:Lcom/instagram/android/fragment/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/fs;->a:Lcom/instagram/android/fragment/fk;

    invoke-static {v0}, Lcom/instagram/android/fragment/fk;->d(Lcom/instagram/android/fragment/fk;)V

    return-void
.end method
