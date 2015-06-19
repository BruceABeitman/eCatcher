.class Lco/vine/android/FindFriendsActivity$FindFriendsListener;
.super Lco/vine/android/client/AppSessionListener;
.source "FindFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/FindFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindFriendsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/FindFriendsActivity;


# direct methods
.method private constructor <init>(Lco/vine/android/FindFriendsActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/FindFriendsActivity$FindFriendsListener;->this$0:Lco/vine/android/FindFriendsActivity;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/FindFriendsActivity;Lco/vine/android/FindFriendsActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/FindFriendsActivity$FindFriendsListener;-><init>(Lco/vine/android/FindFriendsActivity;)V

    return-void
.end method
