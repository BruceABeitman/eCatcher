.class final Lcom/instagram/android/activity/ac;
.super Ljava/lang/Object;
.source "XAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/ab;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/activity/ac;->a:Lcom/instagram/android/activity/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/activity/ac;->a:Lcom/instagram/android/activity/ab;

    invoke-virtual {v0}, Lcom/instagram/android/activity/ab;->onBackPressed()V

    return-void
.end method
