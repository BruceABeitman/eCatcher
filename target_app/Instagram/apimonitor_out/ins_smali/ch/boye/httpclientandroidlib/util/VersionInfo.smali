.class public Lch/boye/httpclientandroidlib/util/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"
.field public static final PROPERTY_MODULE:Ljava/lang/String; = "info.module"
.field public static final PROPERTY_RELEASE:Ljava/lang/String; = "info.release"
.field public static final PROPERTY_TIMESTAMP:Ljava/lang/String; = "info.timestamp"
.field public static final UNAVAILABLE:Ljava/lang/String; = "UNAVAILABLE"
.field public static final VERSION_PROPERTY_FILE:Ljava/lang/String; = "version.properties"
.field private final infoClassloader:Ljava/lang/String;
.field private final infoModule:Ljava/lang/String;
.field private final infoPackage:Ljava/lang/String;
.field private final infoRelease:Ljava/lang/String;
.field private final infoTimestamp:Ljava/lang/String;
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Package identifier must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoPackage:Ljava/lang/String;
if-eqz p2, :cond_20
:goto_11
iput-object p2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoModule:Ljava/lang/String;
if-eqz p3, :cond_23
:goto_15
iput-object p3, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoRelease:Ljava/lang/String;
if-eqz p4, :cond_26
:goto_19
iput-object p4, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoTimestamp:Ljava/lang/String;
if-eqz p5, :cond_29
:goto_1d
iput-object p5, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoClassloader:Ljava/lang/String;
return-void
:cond_20
const-string p2, "UNAVAILABLE"
goto :goto_11
:cond_23
const-string p3, "UNAVAILABLE"
goto :goto_15
:cond_26
const-string p4, "UNAVAILABLE"
goto :goto_19
:cond_29
const-string p5, "UNAVAILABLE"
goto :goto_1d
.end method
.method protected static final fromMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)Lch/boye/httpclientandroidlib/util/VersionInfo;
.registers 9
const/4 v5, 0x0
if-nez p0, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Package identifier must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
if-eqz p1, :cond_67
const-string v0, "info.module"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_65
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-gtz v1, :cond_65
move-object v1, v5
:goto_1e
const-string v0, "info.release"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_63
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_36
const-string v2, "${pom.version}"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_63
:cond_36
move-object v2, v5
:goto_37
const-string v0, "info.timestamp"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_5f
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_4f
const-string v3, "${mvn.timestamp}"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5f
:cond_4f
move-object v4, v5
move-object v3, v2
move-object v2, v1
:goto_52
if-eqz p2, :cond_58
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v5
:cond_58
new-instance v0, Lch/boye/httpclientandroidlib/util/VersionInfo;
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/util/VersionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v0
:cond_5f
move-object v4, v0
move-object v3, v2
move-object v2, v1
goto :goto_52
:cond_63
move-object v2, v0
goto :goto_37
:cond_65
move-object v1, v0
goto :goto_1e
:cond_67
move-object v4, v5
move-object v3, v5
move-object v2, v5
goto :goto_52
.end method
.method public static final loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lch/boye/httpclientandroidlib/util/VersionInfo;
.registers 6
const/4 v0, 0x0
if-nez p0, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Package identifier must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
if-nez p1, :cond_15
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
move-result-object p1
:cond_15
:try_start_15
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const/16 v2, 0x2e
const/16 v3, 0x2f
invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/version.properties"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
:try_end_33
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_33} :catch_4d
move-result-object v2
if-eqz v2, :cond_50
:try_start_36
new-instance v1, Ljava/util/Properties;
invoke-direct {v1}, Ljava/util/Properties;-><init>()V
invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
:try_end_3e
.catchall {:try_start_36 .. :try_end_3e} :catchall_48
:try_start_3e
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:goto_41
:try_end_41
.catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_52
if-eqz v1, :cond_47
invoke-static {p0, v1, p1}, Lch/boye/httpclientandroidlib/util/VersionInfo;->fromMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)Lch/boye/httpclientandroidlib/util/VersionInfo;
move-result-object v0
:cond_47
return-object v0
:catchall_48
move-exception v1
:try_start_49
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
throw v1
:try_end_4d
.catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4d
:catch_4d
move-exception v1
move-object v1, v0
goto :goto_41
:cond_50
move-object v1, v0
goto :goto_41
:catch_52
move-exception v2
goto :goto_41
.end method
.method public static final loadVersionInfo([Ljava/lang/String;Ljava/lang/ClassLoader;)[Lch/boye/httpclientandroidlib/util/VersionInfo;
.registers 5
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Package identifier list must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
new-instance v1, Ljava/util/ArrayList;
array-length v0, p0
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
:goto_11
array-length v2, p0
if-ge v0, v2, :cond_22
aget-object v2, p0, v0
invoke-static {v2, p1}, Lch/boye/httpclientandroidlib/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lch/boye/httpclientandroidlib/util/VersionInfo;
move-result-object v2
if-eqz v2, :cond_1f
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_1f
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_22
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Lch/boye/httpclientandroidlib/util/VersionInfo;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lch/boye/httpclientandroidlib/util/VersionInfo;
check-cast v0, [Lch/boye/httpclientandroidlib/util/VersionInfo;
return-object v0
.end method
.method public final getClassloader()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoClassloader:Ljava/lang/String;
return-object v0
.end method
.method public final getModule()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoModule:Ljava/lang/String;
return-object v0
.end method
.method public final getPackage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoPackage:Ljava/lang/String;
return-object v0
.end method
.method public final getRelease()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoRelease:Ljava/lang/String;
return-object v0
.end method
.method public final getTimestamp()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoTimestamp:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
const/16 v3, 0x3a
new-instance v0, Ljava/lang/StringBuffer;
iget-object v1, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoPackage:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, 0x14
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoModule:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v1, v2
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoRelease:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v1, v2
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoTimestamp:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v1, v2
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoClassloader:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v1, v2
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V
const-string v1, "VersionInfo("
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoPackage:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoModule:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, "UNAVAILABLE"
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoRelease:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_53
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoRelease:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_53
const-string v1, "UNAVAILABLE"
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoTimestamp:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_66
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoTimestamp:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_66
const/16 v1, 0x29
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const-string v1, "UNAVAILABLE"
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoClassloader:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_80
const/16 v1, 0x40
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/util/VersionInfo;->infoClassloader:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_80
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method