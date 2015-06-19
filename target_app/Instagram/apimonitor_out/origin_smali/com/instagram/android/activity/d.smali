.class final Lcom/instagram/android/activity/d;
.super Ljava/lang/Object;
.source "CaptureFlowHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/CharSequence;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Ljava/lang/CharSequence;

.field final synthetic d:Lcom/instagram/android/activity/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/c;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/android/activity/d;->d:Lcom/instagram/android/activity/c;

    iput-object p2, p0, Lcom/instagram/android/activity/d;->a:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/instagram/android/activity/d;->b:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/instagram/android/activity/d;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/android/activity/d;->a:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/instagram/android/activity/d;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v0, Lcom/instagram/o/a;->h:Lcom/instagram/o/a;

    invoke-virtual {v0}, Lcom/instagram/o/a;->c()V

    iget-object v0, p0, Lcom/instagram/android/activity/d;->d:Lcom/instagram/android/activity/c;

    const-string v1, ".jpg"

    invoke-static {v1}, Lcom/instagram/creation/photo/b/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    iget-object v0, p0, Lcom/instagram/android/activity/d;->d:Lcom/instagram/android/activity/c;

    invoke-static {v0}, Lcom/instagram/android/activity/c;->a(Lcom/instagram/android/activity/c;)Lcom/instagram/android/activity/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/d;->d:Lcom/instagram/android/activity/c;

    iget-object v1, v1, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    const/16 v2, 0x2713

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-interface {v0, v1, v2, v3}, Lcom/instagram/android/activity/e;->a(Ljava/io/File;ILjava/lang/String;)V

    :goto_2c
    return-void

    :cond_2d
    iget-object v1, p0, Lcom/instagram/android/activity/d;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/instagram/o/a;->m:Lcom/instagram/o/a;

    invoke-virtual {v0}, Lcom/instagram/o/a;->c()V

    iget-object v0, p0, Lcom/instagram/android/activity/d;->d:Lcom/instagram/android/activity/c;

    invoke-static {v0}, Lcom/instagram/android/activity/c;->b(Lcom/instagram/android/activity/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/video/l/j;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/instagram/android/activity/d;->d:Lcom/instagram/android/activity/c;

    const-string v1, ".mp4"

    invoke-static {v1}, Lcom/instagram/creation/photo/b/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    iget-object v0, p0, Lcom/instagram/android/activity/d;->d:Lcom/instagram/android/activity/c;

    invoke-static {v0}, Lcom/instagram/android/activity/c;->a(Lcom/instagram/android/activity/c;)Lcom/instagram/android/activity/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/d;->d:Lcom/instagram/android/activity/c;

    iget-object v1, v1, Lcom/instagram/android/activity/c;->a:Ljava/io/File;

    const/16 v2, 0x2715

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-interface {v0, v1, v2, v3}, Lcom/instagram/android/activity/e;->a(Ljava/io/File;ILjava/lang/String;)V

    goto :goto_2c

    :cond_5f
    iget-object v0, p0, Lcom/instagram/android/activity/d;->d:Lcom/instagram/android/activity/c;

    invoke-static {v0}, Lcom/instagram/android/activity/c;->c(Lcom/instagram/android/activity/c;)V

    goto :goto_2c
.end method
