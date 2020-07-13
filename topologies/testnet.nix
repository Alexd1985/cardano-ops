pkgs: with pkgs; with lib;
{
  "${globals.faucetHostname}" = {
    services.cardano-faucet = {
      anonymousAccess = true;
      faucetLogLevel = "DEBUG";
      secondsBetweenRequestsAnonymous = 86400;
      secondsBetweenRequestsApiKeyAuth = 86400;
      lovelacesToGiveAnonymous = 1000000000;
      lovelacesToGiveApiKeyAuth = 1000000000000;
      faucetFrontendUrl = "https://testnets.cardano.org/en/byron/tools/faucet/";
    };
  };

  legacyCoreNodes = [];

  legacyRelayNodes = [];

  byronProxies = [];

  coreNodes = [
    {
      name = "c-a-1";
      region = "eu-central-1";
      producers = [
        "c-a-2"
        "c-b-1" "c-c-1" "c-d-1"
        "e-a-1" "e-a-2"
        "e-b-1"
      ];
      org = "IOHK";
      nodeId = 1;
    }
    {
      name = "c-a-2";
      region = "eu-central-1";
      producers = [
        "c-a-1"
        "c-b-2" "c-c-2"
        "e-a-1" "e-a-2"
        "e-c-1" "e-d-1"
      ];
      org = "IOHK";
      nodeId = 2;
    }
    {
      name = "c-b-1";
      region = "ap-northeast-1";
      producers = [
        "c-b-2"
        "c-a-1" "c-c-1" "c-d-1"
        "e-b-1" "e-b-2"
        "e-a-1"
      ];
      org = "IOHK";
      nodeId = 3;
    }
    {
      name = "c-b-2";
      region = "ap-northeast-1";
      producers = [
        "c-b-1"
        "c-a-2" "c-c-2"
        "e-b-1" "e-b-2"
        "e-c-2" "e-d-2"
      ];
      org = "IOHK";
      nodeId = 4;
    }
    {
      name = "c-c-1";
      region = "ap-southeast-1";
      producers = [
        "c-c-2"
        "c-a-1" "c-b-1" "c-d-1"
        "e-c-1" "e-c-2"
        "e-a-1"
      ];
      org = "IOHK";
      nodeId = 5;
    }
    {
      name = "c-c-2";
      region = "ap-southeast-1";
      producers = [
        "c-c-1"
        "c-a-2" "c-b-2"
        "e-c-1" "e-c-2"
        "e-b-2" "e-d-2"
      ];
      org = "IOHK";
      nodeId = 6;
    }
    {
      name = "c-d-1";
      region = "us-east-2";
      producers = [
        "c-a-1" "c-b-1" "c-c-1"
        "e-d-1" "e-d-2"
        "e-a-1" "e-b-1" "e-c-1"
      ];
      org = "IOHK";
      nodeId = 7;
    }
   ];

  relayNodes = [
    {
      name = "e-a-1";
      region = "eu-central-1";
      org = "IOHK";
      nodeId = 8;
      producers = ["c-a-2" "e-a-2" "e-b-1" "e-c-1" "e-d-1"];
    }
    {
      name = "e-b-1";
      region = "ap-northeast-1";
      org = "IOHK";
      nodeId = 9;
      producers = ["c-b-2" "e-b-2" "e-a-1" "e-d-1" "e-c-1"];
    }
    {
      name = "e-c-1";
      region = "ap-southeast-1";
      org = "IOHK";
      nodeId = 10;
      producers = ["c-c-2" "e-c-2" "e-d-1" "e-a-1" "e-b-1"];
    }
    {
      name = "e-d-1";
      region = "us-east-2";
      org = "IOHK";
      nodeId = 11;
      producers = ["c-d-1" "e-d-2" "e-c-1" "e-a-1" "e-b-1"];
    }
    {
      name = "e-a-2";
      region = "eu-central-1";
      org = "IOHK";
      nodeId = 12;
      producers = ["c-a-1" "e-a-1" "e-b-2" "e-c-2" "e-d-2"];
    }
    {
      name = "e-b-2";
      region = "ap-northeast-1";
      org = "IOHK";
      nodeId = 13;
      producers = ["c-b-1" "e-b-1" "e-a-2" "e-c-2" "e-d-2"];
    }
    {
      name = "e-c-2";
      region = "ap-southeast-1";
      org = "IOHK";
      nodeId = 14;
      producers = ["c-c-1" "e-c-1" "e-a-2" "e-b-2" "e-d-2"];
    }
    {
      name = "e-d-2";
      region = "us-east-2";
      org = "IOHK";
      nodeId = 15;
      producers = ["c-d-1" "e-d-1" "e-a-2" "e-b-2" "e-c-2"];
    }
  ];
}
