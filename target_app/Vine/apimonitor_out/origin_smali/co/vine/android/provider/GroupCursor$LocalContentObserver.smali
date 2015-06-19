.class Lco/vine/android/provider/GroupCursor$LocalContentObserver;
.super Landroid/database/ContentObserver;
.source "GroupCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/GroupCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/provider/GroupCursor;


# direct methods
.method public constructor <init>(Lco/vine/android/provider/GroupCursor;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/provider/GroupCursor$LocalContentObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor$LocalContentObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    iput-boolean p1, v0, Lco/vine/android/provider/GroupCursor;->mSelfChange:Z

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor$LocalContentObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    iget-boolean v0, v0, Lco/vine/android/provider/GroupCursor;->mPreparing:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lco/vine/android/provider/GroupCursor$LocalContentObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lco/vine/android/provider/GroupCursor;->mNeedsDispatchChange:Z

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lco/vine/android/provider/GroupCursor$LocalContentObserver;->this$0:Lco/vine/android/provider/GroupCursor;

    #getter for: Lco/vine/android/provider/GroupCursor;->mContentObservable:Landroid/database/ContentObservable;
    invoke-static {v0}, Lco/vine/android/provider/GroupCursor;->access$000(Lco/vine/android/provider/GroupCursor;)Landroid/database/ContentObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    goto :goto_f
.end method
