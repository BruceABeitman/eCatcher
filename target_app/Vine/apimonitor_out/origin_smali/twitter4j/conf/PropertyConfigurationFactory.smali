.class Ltwitter4j/conf/PropertyConfigurationFactory;
.super Ljava/lang/Object;
.source "PropertyConfigurationFactory.java"

# interfaces
.implements Ltwitter4j/conf/ConfigurationFactory;


# static fields
.field private static final ROOT_CONFIGURATION:Ltwitter4j/conf/PropertyConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ltwitter4j/conf/PropertyConfiguration;

    invoke-direct {v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>()V

    sput-object v0, Ltwitter4j/conf/PropertyConfigurationFactory;->ROOT_CONFIGURATION:Ltwitter4j/conf/PropertyConfiguration;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    return-void
.end method

.method public getInstance()Ltwitter4j/conf/Configuration;
    .registers 2

    sget-object v0, Ltwitter4j/conf/PropertyConfigurationFactory;->ROOT_CONFIGURATION:Ltwitter4j/conf/PropertyConfiguration;

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;
    .registers 3

    new-instance v0, Ltwitter4j/conf/PropertyConfiguration;

    invoke-direct {v0, p1}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
