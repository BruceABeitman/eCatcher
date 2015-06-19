.class final Lcom/instagram/android/activity/r;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/instagram/android/activity/MainTabActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;IIII)V
    .registers 6

    iput-object p1, p0, Lcom/instagram/android/activity/r;->e:Lcom/instagram/android/activity/MainTabActivity;

    iput p2, p0, Lcom/instagram/android/activity/r;->a:I

    iput p3, p0, Lcom/instagram/android/activity/r;->b:I

    iput p4, p0, Lcom/instagram/android/activity/r;->c:I

    iput p5, p0, Lcom/instagram/android/activity/r;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/activity/r;->e:Lcom/instagram/android/activity/MainTabActivity;

    iget v1, p0, Lcom/instagram/android/activity/r;->a:I

    iget v2, p0, Lcom/instagram/android/activity/r;->b:I

    iget v3, p0, Lcom/instagram/android/activity/r;->c:I

    iget v4, p0, Lcom/instagram/android/activity/r;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;IIII)V

    return-void
.end method
