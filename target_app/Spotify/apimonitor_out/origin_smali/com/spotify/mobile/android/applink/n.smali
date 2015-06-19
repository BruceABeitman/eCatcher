.class public final Lcom/spotify/mobile/android/applink/n;
.super Lcom/spotify/mobile/android/applink/c;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/applink/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/applink/n;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/applink/n;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/n;->a:Ljava/lang/String;

    return-object v0
.end method
