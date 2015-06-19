.class final Lcom/instagram/android/activity/m;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/MainTabActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/activity/m;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/activity/m;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->finish()V

    return-void
.end method
