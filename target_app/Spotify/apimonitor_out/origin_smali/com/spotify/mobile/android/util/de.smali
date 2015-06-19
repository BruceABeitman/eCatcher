.class public Lcom/spotify/mobile/android/util/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# instance fields
.field private final a:Lcom/squareup/okhttp/m;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Not called from main loop"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/squareup/okhttp/m;

    invoke-direct {v0}, Lcom/squareup/okhttp/m;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/de;->a:Lcom/squareup/okhttp/m;

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/m;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/de;->a:Lcom/squareup/okhttp/m;

    return-object v0
.end method
