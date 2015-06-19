.class final Lcom/instagram/android/fragment/be;
.super Ljava/lang/Object;
.source "FindContactListFriendsPromptFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bb;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bb;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/be;->a:Lcom/instagram/android/fragment/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/be;->a:Lcom/instagram/android/fragment/bb;

    invoke-static {v0}, Lcom/instagram/android/fragment/bb;->b(Lcom/instagram/android/fragment/bb;)V

    return-void
.end method
