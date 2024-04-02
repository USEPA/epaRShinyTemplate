import { reactShinyInput } from 'reactR';
import { Header, AppVersion } from "@us-epa-camd/easey-design-system";

function epaFooter({ configuration, value }) {
  return (
    <>
      <div className="bottom-0 width-full">
        <AppVersion
          version={configuration.appVersion}
          publishDate={configuration.appPublished}
        />
      </div>
    </>
  );
}

export default function initEpaFooter(){
  reactShinyInput(
    '.epaSlimFooter',
    'epaRShinyTemplate.epaSlimFooter',
    epaFooter
  );
}
