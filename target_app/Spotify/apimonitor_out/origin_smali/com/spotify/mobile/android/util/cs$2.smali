.class final Lcom/spotify/mobile/android/util/cs$2;
.super Landroid/content/AsyncQueryHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/cs;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/cs;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/util/cs$2;->a:Lcom/spotify/mobile/android/util/cs;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected final createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3

    invoke-static {p1}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/os/Looper;)Landroid/os/Looper;

    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/util/cs$2;->a:Lcom/spotify/mobile/android/util/cs;

    invoke-static {v0, p3}, Lcom/spotify/mobile/android/util/cs;->a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V

    return-void
.end method
