.class public Lco/vine/android/util/video/VideoKey;
.super Ljava/lang/Object;
.source "VideoKey.java"
.field public final url:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
iget-object v2, p0, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
if-eqz v2, :cond_22
iget-object v0, p0, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
check-cast p1, Lco/vine/android/util/video/VideoKey;
iget-object v1, p1, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_4
:cond_22
check-cast p1, Lco/vine/android/util/video/VideoKey;
iget-object v2, p1, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x1f
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/util/video/VideoKey;->url:Ljava/lang/String;
return-object v0
.end method