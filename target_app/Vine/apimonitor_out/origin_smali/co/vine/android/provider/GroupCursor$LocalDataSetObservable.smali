.class public Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;
.super Landroid/database/DataSetObservable;
.source "GroupCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/GroupCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LocalDataSetObservable"
.end annotation


# instance fields
.field private mNotifyOnChange:Z

.field final synthetic this$0:Lco/vine/android/provider/GroupCursor;


# direct methods
.method public constructor <init>(Lco/vine/android/provider/GroupCursor;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->this$0:Lco/vine/android/provider/GroupCursor;

    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->mNotifyOnChange:Z

    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->mNotifyOnChange:Z

    if-eqz v0, :cond_7

    invoke-super {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_7
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/provider/GroupCursor$LocalDataSetObservable;->mNotifyOnChange:Z

    return-void
.end method
