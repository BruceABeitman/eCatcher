.class public Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
.super Ljava/lang/Object;
.source "RecordSessionManager.java"
.implements Ljava/lang/Comparable;
.field public final folder:Ljava/io/File;
.field public final meta:Lco/vine/android/recorder/RecordSessionMeta;
.field public final thumb:Ljava/io/File;
.field public final video:Ljava/io/File;
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lco/vine/android/recorder/RecordSessionMeta;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;
iput-object p2, p0, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->thumb:Ljava/io/File;
iput-object p3, p0, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->video:Ljava/io/File;
iput-object p4, p0, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->meta:Lco/vine/android/recorder/RecordSessionMeta;
return-void
.end method
.method public compareTo(Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;)I
.registers 4
.parameter
.end parameter
iget-object v0, p0, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v0
iget-object v1, p1, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I
move-result v0
return v0
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->compareTo(Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;)I
move-result v0
return v0
.end method