.class Lco/vine/android/TagSearchFragment$1;
.super Ljava/lang/Object;
.source "TagSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/TagSearchFragment;->cleanSearchResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/TagSearchFragment;


# direct methods
.method constructor <init>(Lco/vine/android/TagSearchFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/TagSearchFragment$1;->this$0:Lco/vine/android/TagSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/TagSearchFragment$1;->this$0:Lco/vine/android/TagSearchFragment;

    iget-object v0, v0, Lco/vine/android/TagSearchFragment;->mDbHelper:Lco/vine/android/provider/VineDatabaseHelper;

    invoke-virtual {v0}, Lco/vine/android/provider/VineDatabaseHelper;->cleanTagSearchResults()V

    return-void
.end method
