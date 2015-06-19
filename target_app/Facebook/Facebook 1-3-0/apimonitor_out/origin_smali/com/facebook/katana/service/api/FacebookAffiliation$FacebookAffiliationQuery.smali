.class interface abstract Lcom/facebook/katana/service/api/FacebookAffiliation$FacebookAffiliationQuery;
.super Ljava/lang/Object;
.source "FacebookAffiliation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/FacebookAffiliation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FacebookAffiliationQuery"
.end annotation


# static fields
.field public static final FACEBOOK_EMPLOYEE_EVER_KEY:Ljava/lang/String; = "seen_employee"

.field public static final FACEBOOK_EMPLOYEE_KEY:Ljava/lang/String; = "is_employee"

.field public static final PREDICATE:Ljava/lang/String; = "key IN(\"is_employee\",\"seen_employee\")"
