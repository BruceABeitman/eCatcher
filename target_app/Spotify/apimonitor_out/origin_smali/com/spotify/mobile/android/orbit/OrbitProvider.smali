.class public final Lcom/spotify/mobile/android/orbit/OrbitProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;


# instance fields
.field private nOrbitProviderPtr:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native acquirePath(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native insert(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public final native numberOfRows(Ljava/lang/String;)I
.end method

.method public final native query(Ljava/lang/String;[Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public final native releasePath(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final native remove(Ljava/lang/String;)V
.end method

.method public final native setObserver(Lcom/spotify/mobile/android/orbit/OrbitProviderObserver;)V
.end method

.method public final native update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public final native writeImageToPipe(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
.end method
