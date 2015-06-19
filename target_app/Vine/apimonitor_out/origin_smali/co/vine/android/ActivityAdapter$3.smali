.class Lco/vine/android/ActivityAdapter$3;
.super Ljava/lang/Object;
.source "ActivityAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ActivityAdapter;


# direct methods
.method constructor <init>(Lco/vine/android/ActivityAdapter;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ActivityAdapter$3;->this$0:Lco/vine/android/ActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineEverydayNotification;

    iget-object v1, p0, Lco/vine/android/ActivityAdapter$3;->this$0:Lco/vine/android/ActivityAdapter;

    #getter for: Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lco/vine/android/ActivityAdapter;->access$000(Lco/vine/android/ActivityAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, v0, Lco/vine/android/api/VineEverydayNotification;->notificationId:J

    iget-wide v4, v0, Lco/vine/android/api/VineEverydayNotification;->anchor:J

    invoke-static {v1, v2, v3, v4, v5}, Lco/vine/android/UsersActivity;->launchUserListForNotification(Landroid/content/Context;JJ)V

    return-void
.end method
