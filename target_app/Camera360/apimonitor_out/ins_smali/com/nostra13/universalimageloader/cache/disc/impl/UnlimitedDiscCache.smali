.class public Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;
.super Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;
.source "UnlimitedDiscCache.java"
.method public constructor <init>(Ljava/io/File;)V
.registers 3
invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
return-void
.end method
.method public constructor <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
return-void
.end method
.method public put(Ljava/lang/String;Ljava/io/File;)V
.registers 3
return-void
.end method