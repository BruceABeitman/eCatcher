.class public interface abstract Lco/vine/android/provider/Vine$UserSections;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserSections"
.end annotation


# static fields
.field public static final LAST_SECTION_REFRESH:Ljava/lang/String; = "last_section_refresh"

.field public static final SECTION_INDEX:Ljava/lang/String; = "section_index"

.field public static final SECTION_TITLE:Ljava/lang/String; = "section_title"

.field public static final SECTION_TYPE:Ljava/lang/String; = "section_type"

.field public static final TABLE_NAME:Ljava/lang/String; = "user_sections"

.field public static final TYPE_FRIENDS:I = 0x1

.field public static final TYPE_RECIPIENT:I = 0x0

.field public static final USER_ID:Ljava/lang/String; = "user_id"
