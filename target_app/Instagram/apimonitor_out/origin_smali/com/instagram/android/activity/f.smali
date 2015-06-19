.class final Lcom/instagram/android/activity/f;
.super Ljava/lang/Object;
.source "FlickrAuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/FlickrAuthActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/FlickrAuthActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/activity/f;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/instagram/android/activity/f;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/FlickrAuthActivity;->setResult(I)V

    iget-object v0, p0, Lcom/instagram/android/activity/f;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->finish()V

    return-void
.end method
