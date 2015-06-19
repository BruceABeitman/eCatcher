.class final Lco/vine/android/api/VineParsers$1;
.super Lco/vine/android/api/VineParsers$RecordListParser;
.source "VineParsers.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/api/VineParsers$RecordListParser;-><init>()V
return-void
.end method
.method public parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/util/ArrayList;
.registers 4
#calls: Lco/vine/android/api/VineParsers;->parseUsersArray(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/util/ArrayList;
invoke-static {p1, p2}, Lco/vine/android/api/VineParsers;->access$000(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method