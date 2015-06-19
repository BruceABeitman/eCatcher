.class Lco/vine/android/UserSearchFragment$1;
.super Ljava/lang/Object;
.source "UserSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/UserSearchFragment;->cleanSearchResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/UserSearchFragment;


# direct methods
.method constructor <init>(Lco/vine/android/UserSearchFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/UserSearchFragment$1;->this$0:Lco/vine/android/UserSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/UserSearchFragment$1;->this$0:Lco/vine/android/UserSearchFragment;

    iget-object v0, v0, Lco/vine/android/UserSearchFragment;->mDbHelper:Lco/vine/android/provider/VineDatabaseHelper;

    invoke-virtual {v0}, Lco/vine/android/provider/VineDatabaseHelper;->cleanUserSearchResults()V

    return-void
.end method
