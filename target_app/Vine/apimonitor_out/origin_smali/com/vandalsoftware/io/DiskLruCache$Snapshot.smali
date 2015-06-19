.class public final Lcom/vandalsoftware/io/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vandalsoftware/io/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final paths:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/io/InputStream;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    iput-object p2, p0, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->paths:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>([Ljava/io/InputStream;[Ljava/lang/String;Lcom/vandalsoftware/io/DiskLruCache$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;-><init>([Ljava/io/InputStream;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_e

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/vandalsoftware/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPath(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Snapshot;->paths:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
