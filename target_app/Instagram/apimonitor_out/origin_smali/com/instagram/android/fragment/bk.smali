.class final Lcom/instagram/android/fragment/bk;
.super Ljava/lang/Object;
.source "FindFacebookFriendsPromptFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bh;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/bk;->a:Lcom/instagram/android/fragment/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/bk;->a:Lcom/instagram/android/fragment/bh;

    invoke-static {v0}, Lcom/instagram/android/fragment/bh;->c(Lcom/instagram/android/fragment/bh;)V

    return-void
.end method
