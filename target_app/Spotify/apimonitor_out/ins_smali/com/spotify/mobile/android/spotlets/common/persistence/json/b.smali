.class final Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field final a:Ljava/io/Serializable;
.method private constructor <init>(Ljava/io/Serializable;)V
.registers 2
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;->a:Ljava/io/Serializable;
return-void
.end method
.method static a(Ljava/io/Serializable;)Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;-><init>(Ljava/io/Serializable;)V
return-object v0
.end method