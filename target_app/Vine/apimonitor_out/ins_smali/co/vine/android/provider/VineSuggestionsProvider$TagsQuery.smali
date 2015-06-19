.class public interface abstract Lco/vine/android/provider/VineSuggestionsProvider$TagsQuery;
.super Ljava/lang/Object;
.source "VineSuggestionsProvider.java"
.field public static final INDEX_TAG_ID:I = 0x1
.field public static final INDEX_TAG_NAME:I = 0x2
.field public static final PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "tag_id"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "tag_name"
aput-object v2, v0, v1
sput-object v0, Lco/vine/android/provider/VineSuggestionsProvider$TagsQuery;->PROJECTION:[Ljava/lang/String;
return-void
.end method