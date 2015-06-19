.class final Lcom/crashlytics/android/internal/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/io/File;

.field final b:J


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/K;Ljava/io/File;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/crashlytics/android/internal/M;->a:Ljava/io/File;

    iput-wide p3, p0, Lcom/crashlytics/android/internal/M;->b:J

    return-void
.end method
