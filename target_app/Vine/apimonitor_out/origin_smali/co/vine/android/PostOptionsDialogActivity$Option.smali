.class public Lco/vine/android/PostOptionsDialogActivity$Option;
.super Ljava/lang/Object;
.source "PostOptionsDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/PostOptionsDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# instance fields
.field public id:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lco/vine/android/PostOptionsDialogActivity$Option;->id:I

    iput-object p2, p0, Lco/vine/android/PostOptionsDialogActivity$Option;->text:Ljava/lang/String;

    return-void
.end method
