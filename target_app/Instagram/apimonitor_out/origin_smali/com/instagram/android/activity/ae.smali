.class final Lcom/instagram/android/activity/ae;
.super Ljava/lang/Object;
.source "XAuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instagram/android/activity/ab;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/ab;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/activity/ae;->b:Lcom/instagram/android/activity/ab;

    iput-object p2, p0, Lcom/instagram/android/activity/ae;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/android/activity/ae;->b:Lcom/instagram/android/activity/ab;

    iget-object v1, p0, Lcom/instagram/android/activity/ae;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1, v2}, Lcom/instagram/n/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
